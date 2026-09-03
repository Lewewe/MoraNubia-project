.class Lcn/nubia/upgrade/http/d$a;
.super Landroid/os/AsyncTask;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/http/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcn/nubia/upgrade/http/d$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/upgrade/http/IGetVersionListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcn/nubia/upgrade/http/d;


# direct methods
.method constructor <init>(Lcn/nubia/upgrade/http/d;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/http/d$a;->f:Lcn/nubia/upgrade/http/d;

    iput-object p2, p0, Lcn/nubia/upgrade/http/d$a;->a:Lcn/nubia/upgrade/http/IGetVersionListener;

    iput-object p3, p0, Lcn/nubia/upgrade/http/d$a;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcn/nubia/upgrade/http/d$a;->c:Z

    iput-object p5, p0, Lcn/nubia/upgrade/http/d$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/nubia/upgrade/http/d$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcn/nubia/upgrade/http/d$b;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/http/d$a;->a:Lcn/nubia/upgrade/http/IGetVersionListener;

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget v0, p1, Lcn/nubia/upgrade/http/d$b;->a:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcn/nubia/upgrade/http/d$b;->b:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lcn/nubia/upgrade/http/d$a;->a:Lcn/nubia/upgrade/http/IGetVersionListener;

    iget-object p1, p1, Lcn/nubia/upgrade/http/d$b;->b:Lcn/nubia/upgrade/model/VersionData;

    invoke-interface {p0, p1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0

    .line 8
    :cond_1
    iget p1, p1, Lcn/nubia/upgrade/http/d$b;->a:I

    if-nez p1, :cond_2

    .line 9
    iget-object p0, p0, Lcn/nubia/upgrade/http/d$a;->a:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {p0}, Lcn/nubia/upgrade/http/IGetVersionListener;->onGetNoVersion()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p0, p0, Lcn/nubia/upgrade/http/d$a;->a:Lcn/nubia/upgrade/http/IGetVersionListener;

    invoke-interface {p0, p1}, Lcn/nubia/upgrade/http/IGetVersionListener;->onError(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "HttpRequestManager"

    const-string p1, "getVersion result null."

    .line 12
    invoke-static {p0, p1}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lcn/nubia/upgrade/http/d$b;
    .locals 6

    const-string p1, "(respone)"

    .line 2
    new-instance v0, Lcn/nubia/upgrade/http/d$b;

    iget-object v1, p0, Lcn/nubia/upgrade/http/d$a;->f:Lcn/nubia/upgrade/http/d;

    invoke-direct {v0, v1}, Lcn/nubia/upgrade/http/d$b;-><init>(Lcn/nubia/upgrade/http/d;)V

    .line 4
    iget-object v1, p0, Lcn/nubia/upgrade/http/d$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/upgrade/c/b;->b(Landroid/content/Context;)Lcn/nubia/upgrade/model/a;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "HttpRequestManager"

    if-nez v1, :cond_0

    const-string p0, "create PostApkInfo instance fail."

    .line 6
    invoke-static {v3, p0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    .line 15
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcn/nubia/upgrade/http/d$a;->c:Z

    if-eqz v2, :cond_2

    .line 16
    invoke-static {}, Lcn/nubia/upgrade/constants/a;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/nubia/upgrade/constants/a;->a()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcn/nubia/upgrade/http/d$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/upgrade/http/d$a;->e:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v4, v5}, Lcn/nubia/upgrade/model/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/upgrade/http/d$a;->d:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/upgrade/http/d$a;->e:Ljava/lang/String;

    .line 18
    invoke-static {v2, v1, v4, p0}, Lcn/nubia/upgrade/http/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    const-string p1, "server_busy"

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p0, 0x7d4

    .line 24
    iput p0, v0, Lcn/nubia/upgrade/http/d$b;->a:I

    const-string p0, "(error) server_busy"

    .line 25
    invoke-static {v3, p0}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 34
    :cond_3
    invoke-static {p0}, Lcn/nubia/upgrade/b/a;->a(Ljava/lang/String;)Lcn/nubia/upgrade/model/VersionData;

    move-result-object p0

    if-nez p0, :cond_4

    const/16 p0, 0x3e9

    .line 37
    iput p0, v0, Lcn/nubia/upgrade/http/d$b;->a:I

    const-string p0, "parse VersionData error"

    .line 38
    invoke-static {v3, p0}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_4
    iput-object p0, v0, Lcn/nubia/upgrade/http/d$b;->b:Lcn/nubia/upgrade/model/VersionData;

    const/4 p0, 0x0

    .line 41
    iput p0, v0, Lcn/nubia/upgrade/http/d$b;->a:I

    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, "(error) net error"

    .line 43
    invoke-static {v3, p0}, Lcn/nubia/upgrade/c/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3e8

    .line 44
    iput p0, v0, Lcn/nubia/upgrade/http/d$b;->a:I

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/http/d$a;->doInBackground([Ljava/lang/Object;)Lcn/nubia/upgrade/http/d$b;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/nubia/upgrade/http/d$b;

    invoke-virtual {p0, p1}, Lcn/nubia/upgrade/http/d$a;->a(Lcn/nubia/upgrade/http/d$b;)V

    return-void
.end method
