<%inherit file="_templates/site.mako" />
<p>
 This is the index page.
</p>

Here are the last 5 posts:
<ul>
% for post in bf.config.blog.posts[:5]:
    <li><a href="${post.path}">${post.title}</a></li>
% endfor
</ul>
