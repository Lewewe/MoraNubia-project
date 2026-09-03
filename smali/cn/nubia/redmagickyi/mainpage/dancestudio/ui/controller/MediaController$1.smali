.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->onViewHolderAttachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$202(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$202(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;Z)Z

    .line 184
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-interface {v0, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;->seekTo(F)V

    .line 185
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$ControllerHandler;->removeMessages(I)V

    .line 186
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)V

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;Z)V

    return-void
.end method
