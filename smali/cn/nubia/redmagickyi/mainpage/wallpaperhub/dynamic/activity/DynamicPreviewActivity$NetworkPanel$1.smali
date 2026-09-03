.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel$1;
.super Ljava/lang/Object;
.source "DynamicPreviewActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;->shouldShowRemindPlayDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;

.field final synthetic val$onOperationCallback:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V
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

    .line 323
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel$1;->val$onOperationCallback:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 327
    sput-boolean v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubFragment;->isFirstTimePlay:Z

    .line 328
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel$1;->val$onOperationCallback:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;->onDismiss(Z)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$NetworkPanel$1;->val$onOperationCallback:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;->onDismiss(Z)V

    :goto_0
    return-void
.end method
