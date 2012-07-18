<%inherit file="_templates/site.mako" />

<ul>
% for post in bf.config.blog.posts[:5]:
    <li><a href="${post.path}">${post.title}</a></li>
% endfor
</ul>
