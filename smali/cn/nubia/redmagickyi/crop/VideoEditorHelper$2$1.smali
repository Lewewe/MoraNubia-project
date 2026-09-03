.class Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2$1;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;

.field final synthetic val$dstVideo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;Ljava/lang/String;)V
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

    .line 199
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2$1;->this$1:Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2$1;->val$dstVideo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2$1;->this$1:Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2$1;->val$dstVideo:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$202(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;Landroid/net/Uri;)Landroid/net/Uri;

    .line 203
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2$1;->this$1:Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$800(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2$1;->this$1:Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$800(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
