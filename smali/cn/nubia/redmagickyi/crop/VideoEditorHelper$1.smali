.class Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Lcn/nubia/mediaeditor/editor/common/Generator$OnErrorListener;


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

    .line 150
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$100(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->missing_size:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    goto :goto_0

    .line 156
    :cond_1
    new-instance p1, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$100(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->missing_file:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 164
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$500(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)V

    .line 165
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$700(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$600(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->cancel(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$800(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$800(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
