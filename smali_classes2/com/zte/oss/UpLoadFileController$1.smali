.class Lcom/zte/oss/UpLoadFileController$1;
.super Landroid/os/AsyncTask;
.source "UpLoadFileController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/oss/UpLoadFileController;->doRequest(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/oss/UpLoadFileController;

.field final synthetic val$cloudToken:Ljava/lang/String;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$headers:Lokhttp3/Headers;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$serverUrl:Ljava/lang/String;

.field final synthetic val$sparams:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/oss/UpLoadFileController;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/zte/oss/UpLoadFileController$1;->this$0:Lcom/zte/oss/UpLoadFileController;

    iput-object p2, p0, Lcom/zte/oss/UpLoadFileController$1;->val$serverUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/oss/UpLoadFileController$1;->val$sparams:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/oss/UpLoadFileController$1;->val$headers:Lokhttp3/Headers;

    iput-object p5, p0, Lcom/zte/oss/UpLoadFileController$1;->val$mimeType:Ljava/lang/String;

    iput-object p6, p0, Lcom/zte/oss/UpLoadFileController$1;->val$file:Ljava/io/File;

    iput-object p7, p0, Lcom/zte/oss/UpLoadFileController$1;->val$cloudToken:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zte/oss/UpLoadFileController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/zte/oss/UpLoadFileController$1;->this$0:Lcom/zte/oss/UpLoadFileController;

    iget-object v1, p0, Lcom/zte/oss/UpLoadFileController$1;->val$serverUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/oss/UpLoadFileController$1;->val$sparams:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/oss/UpLoadFileController$1;->val$headers:Lokhttp3/Headers;

    iget-object v4, p0, Lcom/zte/oss/UpLoadFileController$1;->val$mimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/oss/UpLoadFileController$1;->val$file:Ljava/io/File;

    iget-object v6, p0, Lcom/zte/oss/UpLoadFileController$1;->val$cloudToken:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/zte/oss/UpLoadFileController;->access$000(Lcom/zte/oss/UpLoadFileController;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/oss/UpLoadFileController$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "result:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UpLoadFileController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
