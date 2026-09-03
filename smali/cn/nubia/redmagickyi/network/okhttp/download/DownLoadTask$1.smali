.class Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;
.super Ljava/lang/Object;
.source "DownLoadTask.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "download error, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownLoadTask"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-nez p1, :cond_1

    instance-of p1, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$900(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)V

    goto :goto_1

    .line 112
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$900(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)V

    :goto_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0xb

    if-eqz p2, :cond_5

    .line 121
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 125
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1002(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)I

    .line 128
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1100(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gtz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1102(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;J)J

    .line 131
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1300(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1202(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)I

    .line 132
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1400(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V

    .line 134
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1500(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;Ljava/io/InputStream;)V

    return-void

    .line 137
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v4, 0x194

    if-ne v0, v4, :cond_2

    .line 138
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$900(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)V

    return-void

    .line 140
    :cond_2
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v0, 0x1a0

    if-ne p2, v0, :cond_5

    .line 142
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1600(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1700(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1100(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1800(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-lez p1, :cond_3

    goto :goto_0

    .line 149
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getDownLoadFilePath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/utils/FileUtils;->deleteDir(Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    const/4 p1, 0x7

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$900(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)V

    goto :goto_1

    .line 143
    :cond_4
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1002(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)I

    .line 144
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1800(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1102(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;J)J

    .line 145
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1202(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)I

    .line 146
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$1400(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;)V

    :goto_1
    return-void

    .line 155
    :cond_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask$1;->this$0:Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->access$900(Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;I)V

    return-void
.end method
