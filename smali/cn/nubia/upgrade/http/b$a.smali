.class Lcn/nubia/upgrade/http/b$a;
.super Landroid/os/AsyncTask;
.source "HttpDownLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/upgrade/http/a;

.field private b:Lcn/nubia/upgrade/http/IDownLoadListener;

.field private c:I

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field final synthetic h:Lcn/nubia/upgrade/http/b;


# direct methods
.method public constructor <init>(Lcn/nubia/upgrade/http/b;Lcn/nubia/upgrade/http/a;Lcn/nubia/upgrade/http/IDownLoadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcn/nubia/upgrade/http/b$a;->c:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/nubia/upgrade/http/b$a;->d:Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcn/nubia/upgrade/http/b$a;->e:I

    .line 16
    iput-object p2, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    .line 17
    iput-object p3, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 18
    iput-object p4, p0, Lcn/nubia/upgrade/http/b$a;->f:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcn/nubia/upgrade/http/b$a;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 6

    const-string v0, "HttpDownLoader"

    .line 781
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 784
    invoke-direct {p0, p1, v1}, Lcn/nubia/upgrade/http/b$a;->a(Ljava/lang/String;Z)I

    move-result p1

    :goto_0
    const/4 v3, 0x6

    if-ne p1, v3, :cond_a

    .line 786
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    :cond_1
    :try_start_0
    const-string p1, "wait network change!!!"

    .line 792
    invoke-static {v0, p1}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xdac

    .line 793
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 796
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 797
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_4

    .line 804
    :cond_2
    :goto_1
    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object p1

    iget-object v3, p0, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    .line 805
    invoke-static {v3}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/b;)Landroid/content/Context;

    move-result-object v3

    .line 806
    invoke-virtual {p1, v3}, Lcn/nubia/upgrade/c/a;->b(Landroid/content/Context;)Z

    move-result p1

    .line 808
    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    .line 809
    invoke-static {v4}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/b;)Landroid/content/Context;

    move-result-object v4

    .line 810
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/c/a;->c(Landroid/content/Context;)Z

    move-result v3

    .line 812
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handle IoException:isWifi:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":isMobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_3

    if-nez p1, :cond_3

    .line 816
    iput-boolean v1, p0, Lcn/nubia/upgrade/http/b$a;->d:Z

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 818
    iput-boolean v4, p0, Lcn/nubia/upgrade/http/b$a;->d:Z

    goto :goto_2

    .line 819
    :cond_4
    iget v3, p0, Lcn/nubia/upgrade/http/b$a;->c:I

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    .line 821
    iput-boolean v4, p0, Lcn/nubia/upgrade/http/b$a;->d:Z

    goto :goto_2

    :cond_5
    if-ne v3, v4, :cond_6

    if-eqz p1, :cond_6

    .line 824
    iput-boolean v1, p0, Lcn/nubia/upgrade/http/b$a;->d:Z

    .line 826
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lcn/nubia/upgrade/http/b$a;->d:Z

    const/16 v3, 0x3e8

    const/4 v4, 0x4

    if-nez p1, :cond_8

    .line 827
    iget-object p1, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v0, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v0, p1, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 829
    iget-object p1, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_7

    .line 830
    iget-object p0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {p0, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    :cond_7
    :goto_3
    move v2, v4

    goto :goto_4

    .line 833
    :cond_8
    iget p1, p0, Lcn/nubia/upgrade/http/b$a;->e:I

    const/4 v5, 0x2

    if-ge p1, v5, :cond_9

    add-int/lit8 p1, p1, 0x1

    .line 834
    iput p1, p0, Lcn/nubia/upgrade/http/b$a;->e:I

    .line 835
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "ReconnectTime---"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/nubia/upgrade/http/b$a;->e:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_b

    .line 837
    iget-object p1, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {p1}, Lcn/nubia/upgrade/http/a;->j()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcn/nubia/upgrade/http/b$a;->a(Ljava/lang/String;Z)I

    move-result p1

    goto/16 :goto_0

    .line 845
    :cond_9
    iget-object p1, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v0, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v0, p1, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 847
    iget-object p1, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_7

    .line 848
    iget-object p0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {p0, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_3

    :cond_a
    move v2, p1

    :cond_b
    :goto_4
    return v2
.end method

.method private a(Ljava/lang/String;Z)I
    .locals 20

    move-object/from16 v1, p0

    const-string v2, ".temp"

    const-string v3, "HTTP_RESPONSE_CODE_ERROR:"

    const-string v4, "Complete Down HTTP_RESPONSE_CODE_ERROR:"

    const-string v5, "bytes="

    const-string v6, "path:"

    .line 2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "wifiConnected:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object v8

    iget-object v9, v1, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    invoke-static {v9}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/b;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/nubia/upgrade/c/a;->c(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HttpDownLoader"

    invoke-static {v8, v7}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "mobileConnected:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object v9

    iget-object v10, v1, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    invoke-static {v10}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/b;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcn/nubia/upgrade/c/a;->b(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object v7

    iget-object v9, v1, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    invoke-static {v9}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/b;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcn/nubia/upgrade/c/a;->b(Landroid/content/Context;)Z

    move-result v7

    const/4 v9, 0x4

    const/16 v10, 0x3e8

    if-nez v7, :cond_1

    .line 6
    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object v7

    iget-object v11, v1, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    invoke-static {v11}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/b;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcn/nubia/upgrade/c/a;->c(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 7
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v3, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v3, v2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    const-string v2, "no available network, download cancel."

    .line 9
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1, v10}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    :cond_0
    return v9

    :cond_1
    const/4 v11, 0x0

    .line 21
    :try_start_0
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v14}, Lcn/nubia/upgrade/http/a;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    .line 22
    invoke-virtual {v14}, Lcn/nubia/upgrade/http/a;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v13, :cond_2

    move v2, v14

    goto :goto_0

    .line 26
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    .line 27
    invoke-virtual {v6}, Lcn/nubia/upgrade/http/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    .line 28
    invoke-virtual {v13}, Lcn/nubia/upgrade/http/a;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3
    move v2, v15

    .line 38
    :goto_0
    new-instance v6, Ljava/net/URL;

    move-object/from16 v13, p1

    invoke-direct {v6, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 42
    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v11, "GET"

    .line 43
    invoke-virtual {v6, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v6, v15}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v11, 0x3a98

    .line 45
    invoke-virtual {v6, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v11, 0x1388

    .line 46
    invoke-virtual {v6, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-wide/16 v16, 0x0

    if-eqz v2, :cond_4

    .line 49
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "RANGE"

    .line 51
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v11, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    move-wide/from16 v9, v16

    :goto_1
    const/16 v18, 0x0

    const-string v11, "rw"

    const-string v5, "code"

    const-string v15, "\n"

    const/16 v19, 0x5

    const-string v7, "Content-Type"

    const-string v14, "application/ausp"

    const/16 v13, 0xc8

    if-eqz v2, :cond_13

    .line 56
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xce

    if-ne v2, v4, :cond_e

    .line 57
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 61
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    .line 62
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v4}, Lcn/nubia/upgrade/http/a;->i()J

    move-result-wide v4

    cmp-long v7, v4, v16

    if-gtz v7, :cond_5

    move-wide/from16 v4, v16

    .line 66
    :cond_5
    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcn/nubia/upgrade/c/a;->a(J)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v2, "break continue down space not enough"

    .line 68
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 70
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v3, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v3, v2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 71
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 72
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v3, 0x3ef

    .line 73
    invoke-interface {v2, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    if-eqz v6, :cond_7

    .line 335
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    const/4 v1, 0x1

    return v1

    :cond_8
    add-long/2addr v2, v9

    .line 336
    :try_start_4
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    iget-object v4, v4, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    sget-object v5, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    if-eq v4, v5, :cond_9

    if-nez p2, :cond_9

    .line 338
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    .line 340
    :cond_9
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    iget-object v4, v4, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    sget-object v5, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    if-eq v4, v5, :cond_a

    if-eqz p2, :cond_a

    .line 342
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    .line 344
    :cond_a
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v5, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    iput-object v5, v4, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 346
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v12, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v4, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 349
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v7, 0x1000

    .line 350
    new-array v7, v7, [B

    const/4 v11, 0x0

    .line 354
    :cond_b
    :goto_2
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_c

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v14

    if-nez v14, :cond_c

    const/4 v14, 0x0

    .line 356
    invoke-virtual {v4, v7, v14, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-float v13, v13

    add-float v18, v18, v13

    .line 358
    iget-object v13, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v13, :cond_b

    long-to-float v14, v9

    add-float v14, v14, v18

    long-to-float v15, v2

    div-float/2addr v14, v15

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    if-eq v11, v14, :cond_b

    .line 362
    invoke-interface {v13, v14}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    move v11, v14

    goto :goto_2

    .line 367
    :cond_c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 368
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_10

    .line 371
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v3, Lcn/nubia/upgrade/http/a$b;->d:Lcn/nubia/upgrade/http/a$b;

    iput-object v3, v2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 373
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/a;->f()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v3}, Lcn/nubia/upgrade/http/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    .line 375
    invoke-virtual {v3}, Lcn/nubia/upgrade/http/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".patch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v12, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_3

    .line 379
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v3}, Lcn/nubia/upgrade/http/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    .line 380
    invoke-virtual {v3}, Lcn/nubia/upgrade/http/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v12, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 384
    :goto_3
    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_10

    .line 385
    invoke-interface {v3, v2}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V

    goto :goto_5

    .line 388
    :cond_e
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-ne v2, v13, :cond_12

    .line 390
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 391
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 396
    :goto_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_f

    .line 398
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 401
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 405
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_10

    const-string v2, "patch down sign key usless"

    .line 409
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_a

    :cond_10
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 414
    :try_start_6
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 415
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v3, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v3, v2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    const-string v2, "download JSONException ERROR_DNS_HIJACK_DOUBT"

    .line 416
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_11

    .line 419
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v3, 0x3e8

    invoke-interface {v2, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    :cond_11
    :goto_6
    const/4 v9, 0x2

    goto/16 :goto_d

    .line 423
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v3, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v3, v2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 431
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_23

    .line 432
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v3, 0x3ec

    .line 433
    invoke-interface {v2, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_c

    .line 439
    :cond_13
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-ne v2, v13, :cond_1f

    .line 441
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 443
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    .line 444
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v4}, Lcn/nubia/upgrade/http/a;->i()J

    move-result-wide v4

    cmp-long v7, v4, v16

    if-gez v7, :cond_14

    move-wide/from16 v4, v16

    .line 448
    :cond_14
    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcn/nubia/upgrade/c/a;->a(J)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v2, "down complete apk space not enough"

    .line 450
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 452
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v3, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v3, v2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 453
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v2, :cond_15

    const/16 v3, 0x3ef

    .line 455
    invoke-interface {v2, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_15
    if-eqz v6, :cond_16

    .line 594
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_16
    const/4 v1, 0x1

    return v1

    :cond_17
    add-long/2addr v2, v9

    .line 595
    :try_start_7
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_18

    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    iget-object v4, v4, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    sget-object v5, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    if-eq v4, v5, :cond_18

    if-nez p2, :cond_18

    .line 597
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onStartDownload()V

    .line 600
    :cond_18
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v4, :cond_19

    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    iget-object v4, v4, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    sget-object v5, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    if-eq v4, v5, :cond_19

    if-eqz p2, :cond_19

    .line 602
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v4}, Lcn/nubia/upgrade/http/IDownLoadListener;->onResumeDownload()V

    .line 604
    :cond_19
    iget-object v4, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v5, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    iput-object v5, v4, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 606
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v12, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const v7, 0xa000

    .line 609
    new-array v7, v7, [B

    const/4 v14, 0x0

    .line 613
    :cond_1a
    :goto_7
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_1c

    .line 614
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v15

    if-nez v15, :cond_1c

    const/4 v15, 0x0

    .line 615
    invoke-virtual {v4, v7, v15, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-float v11, v11

    add-float v18, v18, v11

    .line 617
    iget-object v11, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v11, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_1b

    long-to-float v11, v9

    add-float v11, v11, v18

    long-to-float v13, v2

    div-float/2addr v11, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v11, v13

    float-to-int v11, v11

    if-eq v11, v14, :cond_1a

    .line 621
    iget-object v14, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {v14, v11}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadProgress(I)V

    move v14, v11

    goto :goto_7

    :cond_1b
    const/high16 v13, 0x42c80000    # 100.0f

    goto :goto_7

    :cond_1c
    const/4 v15, 0x0

    .line 627
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 628
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 631
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 632
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v3, Lcn/nubia/upgrade/http/a$b;->d:Lcn/nubia/upgrade/http/a$b;

    iput-object v3, v2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 634
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/a;->f()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v3}, Lcn/nubia/upgrade/http/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    .line 636
    invoke-virtual {v3}, Lcn/nubia/upgrade/http/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".patch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 637
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v12, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_8

    .line 640
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v3}, Lcn/nubia/upgrade/http/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    .line 641
    invoke-virtual {v3}, Lcn/nubia/upgrade/http/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v12, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 645
    :goto_8
    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v3, :cond_1e

    .line 646
    invoke-interface {v3, v2}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadComplete(Ljava/lang/String;)V

    :cond_1e
    move v2, v15

    goto :goto_b

    :cond_1f
    const/4 v2, 0x0

    .line 652
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    if-ne v3, v13, :cond_22

    .line 654
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 655
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 656
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 660
    :goto_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 661
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 665
    :cond_20
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 669
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x7d5

    if-ne v3, v4, :cond_21

    const-string v2, "sign key usless"

    .line 673
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_a
    const/4 v2, 0x3

    :cond_21
    :goto_b
    move v9, v2

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 678
    :try_start_9
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 679
    iget-object v3, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v4, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v4, v3, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR_DNSHIJACK_DOUBT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_11

    .line 683
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v3, 0x3e8

    invoke-interface {v2, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto/16 :goto_6

    .line 687
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v3, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v3, v2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 693
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_23

    .line 694
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v3, 0x3ec

    .line 695
    invoke-interface {v2, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_23
    :goto_c
    move/from16 v9, v19

    :goto_d
    if-eqz v6, :cond_27

    .line 729
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v11, v6

    goto/16 :goto_15

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v11, v6

    goto :goto_e

    :catch_3
    move-object v11, v6

    goto :goto_10

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v11, v6

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_15

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 730
    :goto_e
    :try_start_a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "download apk io exception"

    .line 731
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v9, 0x7

    goto :goto_f

    :cond_24
    const/4 v2, 0x6

    move v9, v2

    :goto_f
    if-eqz v11, :cond_27

    goto :goto_12

    .line 740
    :catch_6
    :goto_10
    const-string v2, "FileNotFoundException"

    .line 741
    invoke-static {v8, v2}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v3, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v3, v2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 743
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v2, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_25

    .line 744
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v3, 0x3f0

    .line 745
    invoke-interface {v2, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    :cond_25
    const/16 v9, 0x8

    if-eqz v11, :cond_27

    goto :goto_12

    :catch_7
    move-exception v0

    move-object v2, v0

    :goto_11
    const-string v3, "MalformedURLException"

    .line 746
    invoke-static {v8, v3}, Lcn/nubia/upgrade/c/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 749
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v3, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v3, v2, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 750
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v2, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_26

    .line 751
    iget-object v2, v1, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v3, 0x3e8

    invoke-interface {v2, v3}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_26
    const/4 v9, 0x4

    if-eqz v11, :cond_27

    .line 740
    :goto_12
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 776
    :cond_27
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v7, 0x7

    goto :goto_14

    :cond_28
    move v7, v9

    .line 779
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doapkDownLoad return:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :goto_15
    if-eqz v11, :cond_29

    .line 780
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_29
    throw v1
.end method

.method private b()V
    .locals 5

    const-string v0, " TryDown SignKey Useless---"

    .line 1
    const-string v1, "HttpDownLoader"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    invoke-static {v0}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/upgrade/c/b;->b(Landroid/content/Context;)Lcn/nubia/upgrade/model/a;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    iget-object v2, v2, Lcn/nubia/upgrade/http/b;->b:Lcn/nubia/upgrade/http/d;

    iget-object v3, p0, Lcn/nubia/upgrade/http/b$a;->f:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/upgrade/http/b$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcn/nubia/upgrade/http/d;->a(Lcn/nubia/upgrade/model/a;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/http/d$b;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x7d5

    if-nez v0, :cond_2

    const-string v0, " SignKey Useless PostApkInfo NULL"

    .line 10
    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, v0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 12
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object p0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {p0, v2}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    :cond_1
    return-void

    .line 19
    :cond_2
    iget-object v3, v0, Lcn/nubia/upgrade/http/d$b;->b:Lcn/nubia/upgrade/model/VersionData;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v3

    if-nez v3, :cond_4

    .line 20
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, v0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 21
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 22
    iget-object p0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    const/16 v0, 0x7d4

    invoke-interface {p0, v0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    :cond_3
    return-void

    .line 27
    :cond_4
    iget v3, v0, Lcn/nubia/upgrade/http/d$b;->a:I

    if-nez v3, :cond_9

    iget-object v0, v0, Lcn/nubia/upgrade/http/d$b;->b:Lcn/nubia/upgrade/model/VersionData;

    if-eqz v0, :cond_9

    .line 29
    new-instance v1, Lcn/nubia/upgrade/http/a;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/a;-><init>()V

    .line 31
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/http/a;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 34
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 37
    :cond_5
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/http/a;->d(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 38
    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/http/a;->a(Z)V

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/http/a;->a(Z)V

    .line 44
    :goto_1
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/http/a;->c(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/http/a;->f(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/a;->g(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/a;->b(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Lcn/nubia/upgrade/http/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    .line 50
    invoke-virtual {v3}, Lcn/nubia/upgrade/http/a;->g()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/a;->f()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/upgrade/http/a;->a(Z)V

    .line 55
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/upgrade/http/a;->d(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/http/a;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 61
    :cond_7
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/upgrade/http/b$a;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 64
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, v0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 65
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 66
    iget-object p0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    .line 67
    invoke-interface {p0, v2}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_2

    .line 72
    :cond_8
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, v0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 73
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 74
    iget-object p0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {p0, v2}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    goto :goto_2

    :cond_9
    const-string v0, "info errorCode!=0"

    .line 79
    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, v0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 81
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 82
    iget-object p0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    invoke-interface {p0, v2}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadError(I)V

    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    invoke-virtual {p1}, Lcn/nubia/upgrade/http/a;->j()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    invoke-static {v1}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/c/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/nubia/upgrade/http/b$a;->c:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/nubia/upgrade/c/a;->b()Lcn/nubia/upgrade/c/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/http/b$a;->h:Lcn/nubia/upgrade/http/b;

    invoke-static {v1}, Lcn/nubia/upgrade/http/b;->a(Lcn/nubia/upgrade/http/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/c/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcn/nubia/upgrade/http/b$a;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcn/nubia/upgrade/http/b$a;->c:I

    .line 9
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/http/b$a;->a(Ljava/lang/String;)I

    move-result p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloader res:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpDownLoader"

    invoke-static {v1, v0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 13
    invoke-direct {p0}, Lcn/nubia/upgrade/http/b$a;->b()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onCancelled()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/http/b$a;->a:Lcn/nubia/upgrade/http/a;

    sget-object v1, Lcn/nubia/upgrade/http/a$b;->c:Lcn/nubia/upgrade/http/a$b;

    iput-object v1, v0, Lcn/nubia/upgrade/http/a;->k:Lcn/nubia/upgrade/http/a$b;

    .line 3
    iget-object p0, p0, Lcn/nubia/upgrade/http/b$a;->b:Lcn/nubia/upgrade/http/IDownLoadListener;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcn/nubia/upgrade/http/IDownLoadListener;->onDownloadPause()V

    :cond_0
    return-void
.end method
