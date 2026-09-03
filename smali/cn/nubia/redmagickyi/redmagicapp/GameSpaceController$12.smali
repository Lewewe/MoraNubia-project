.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OnSettingOpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->Setting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1106
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCallback(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1128
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    :cond_0
    return-void
.end method

.method public onHideFragment()V
    .locals 2

    .line 1119
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onResume()V

    const/4 v0, 0x0

    .line 1120
    sput-boolean v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    .line 1121
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V

    .line 1122
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 1

    .line 1109
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->adjustUnityVolume()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1113
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    goto :goto_1

    .line 1111
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$12;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    sget p1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mSettingDialogAdjustVolumeMotion:I

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1500(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;I)V

    :goto_1
    return-void
.end method
