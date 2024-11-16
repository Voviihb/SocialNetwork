<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    Создать нового пользователя
    ${message!""}
    <@l.login "/registration" />
</@c.page>