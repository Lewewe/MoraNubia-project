.class Lcom/zte/oss/UpLoadFileController$4;
.super Ljava/lang/Object;
.source "UpLoadFileController.java"

# interfaces
.implements Lcom/zte/oss/UpLoadFileController$CloudTokenInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/oss/UpLoadFileController;->getOssConfigSync(Landroid/content/Context;Lcom/zte/oss/entry/CloudToken;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/oss/UpLoadFileController;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/zte/oss/UpLoadFileController;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/zte/oss/UpLoadFileController$4;->this$0:Lcom/zte/oss/UpLoadFileController;

    iput-object p2, p0, Lcom/zte/oss/UpLoadFileController$4;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCloudToken(Lcom/zte/oss/entry/CloudToken;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/zte/oss/UpLoadFileController$4;->this$0:Lcom/zte/oss/UpLoadFileController;

    invoke-static {v0, p1}, Lcom/zte/oss/UpLoadFileController;->access$400(Lcom/zte/oss/UpLoadFileController;Lcom/zte/oss/entry/CloudToken;)V

    .line 280
    iget-object p1, p0, Lcom/zte/oss/UpLoadFileController$4;->val$runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 281
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 283
    :cond_0
    iget-object p0, p0, Lcom/zte/oss/UpLoadFileController$4;->this$0:Lcom/zte/oss/UpLoadFileController;

    invoke-static {p0}, Lcom/zte/oss/UpLoadFileController;->access$500(Lcom/zte/oss/UpLoadFileController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
