.class Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Lcn/nubia/mediaeditor/editor/common/Generator$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->hwVideoEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .line 194
    const-string v0, "VideoAddMediaFileHelper"

    const-string v1, "onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 196
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->release()V

    .line 197
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$600(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 198
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$100(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-instance v4, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2$1;

    invoke-direct {v4, p0, v1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2$1;-><init>(Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$500(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 210
    :catch_0
    :try_start_1
    new-instance v1, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$100(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->missing_file:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 211
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$600(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 212
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$800(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$800(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 214
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$2;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$500(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)V

    .line 215
    throw v0
.end method
