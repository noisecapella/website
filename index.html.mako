<%inherit file="_templates/site.mako" />

<ul>
% for post in bf.config.blog.posts[:5]:
    <li>
    <a href="${post.path}">${post.excerpt}</a><br />
    ${post.date.strftime("%B %d, %Y at %I:%M %p")}
    </li>
% endfor
</ul>
<a href="http://www.mikesfreegifs.com"><IMG SRC="http://www.mikesfreegifs.com/main4/underconstruction/Construction04.gif"><a/>
<br />
