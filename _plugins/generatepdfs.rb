crit = false

Jekyll::Hooks.register :site, :after_init do |site|
  crit=site.config['pdfgeneration']
  STDOUT.write 'site'
end



Jekyll::Hooks.register :posts, :pre_render do |post|

  pdfpath="/assets/pdfs/"+ post.path.split('/').last.split('.').first + ".pdf"

  if post.content.include? "[^1]" 
     post.content = post.content.gsub(/^\[\^1\]/,"## Links \r\n \r\n * [Link to pdf](" + pdfpath + ") \r\n \r\n[^1]")
  else
    post.content = post.content + "\r\n" +"## Links \r\n \r\n * [Link to pdf](" + pdfpath + ") \r\n"
  end

  if (crit)

     newpath= Dir.pwd + '/assets/'
     newcontent=post.content.gsub('/assets/',newpath)
     newcontent= "--- \r\n" + newcontent
     newcontent= "author: " +post.data['author']+" \r\n" + newcontent
     newcontent= "title: " +post.data['title']+" \r\n" + newcontent
     newcontent= "--- \r\n" + newcontent
     File.write('./tmp/dump.md', newcontent)
     STDOUT.write "\r\n*******pdf generation \r\n"
     system("pandoc --from=markdown ./tmp/dump.md  --output=." + pdfpath)
  end

end
