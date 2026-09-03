.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1$2;
.super Ljava/lang/Object;
.source "DynamicPreviewActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1;->checkFirstTimePlay(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$CheckPlayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1;

.field final synthetic val$checkPlayCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$CheckPlayCallback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$CheckPlayCallback;)V
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

    .line 128
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1$2;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1$2;->val$checkPlayCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$CheckPlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 132
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1$2;->val$checkPlayCallback:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$CheckPlayCallback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/BaseWallPaperHubDynamicPreviewAdapter$CheckPlayCallback;->onEnablePlay()V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1$2;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/activity/DynamicPreviewActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
