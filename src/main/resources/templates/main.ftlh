<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>Список сообщний</div>
    <div>
        <@l.logout />
    </div>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Введите сообщение"/>
            <input type="text" name="tag" placeholder="Тэг"/>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Поиск по тэгу</div>
    <div>
        <form method="get" action="main">
            <input type="text" name="filter" placeholder="Введите тэг" value="${filter!}"/>
            <button type="submit">Найти</button>
        </form>
    </div>
    <#list messages as message>
        <div>
            <b>${message.id} </b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>

        </div>
    <#else>
        Сообщений нет
    </#list>
</@c.page>