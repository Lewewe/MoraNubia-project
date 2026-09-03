.class Lcom/zte/oss/UpLoadFileController$3;
.super Landroid/os/AsyncTask;
.source "UpLoadFileController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/oss/UpLoadFileController;->getOssConfig(Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/oss/UpLoadFileController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$token:Lcom/zte/oss/entry/CloudToken;


# direct methods
.method constructor <init>(Lcom/zte/oss/UpLoadFileController;Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/zte/oss/UpLoadFileController$3;->this$0:Lcom/zte/oss/UpLoadFileController;

    iput-object p2, p0, Lcom/zte/oss/UpLoadFileController$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/zte/oss/UpLoadFileController$3;->val$token:Lcom/zte/oss/entry/CloudToken;

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

    .line 261
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zte/oss/UpLoadFileController$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 265
    iget-object p1, p0, Lcom/zte/oss/UpLoadFileController$3;->this$0:Lcom/zte/oss/UpLoadFileController;

    iget-object v0, p0, Lcom/zte/oss/UpLoadFileController$3;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/zte/oss/UpLoadFileController$3;->val$token:Lcom/zte/oss/entry/CloudToken;

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/zte/oss/UpLoadFileController;->access$300(Lcom/zte/oss/UpLoadFileController;Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;Ljava/lang/Runnable;)V

    return-object v1
.end method
