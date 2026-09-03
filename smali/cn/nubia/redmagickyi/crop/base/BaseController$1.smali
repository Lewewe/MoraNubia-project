.class Lcn/nubia/redmagickyi/crop/base/BaseController$1;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/AudioFocus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/base/BaseController;->setAudioFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/base/BaseController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$1;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLossFocus()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$1;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$1;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->setPauseState(Z)V

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController$1;->this$0:Lcn/nubia/redmagickyi/crop/base/BaseController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/base/BaseController;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->pause()V

    :cond_0
    return-void
.end method
