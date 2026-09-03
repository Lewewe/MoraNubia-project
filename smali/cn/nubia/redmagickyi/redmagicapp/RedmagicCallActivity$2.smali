.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$2;
.super Ljava/lang/Object;
.source "RedmagicCallActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->onPermissionOprateComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 364
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 365
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    const-string v0, "finish"

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$202(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 354
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$100(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 348
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 349
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method
