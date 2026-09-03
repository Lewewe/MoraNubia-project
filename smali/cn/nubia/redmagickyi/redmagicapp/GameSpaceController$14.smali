.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$14;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->doubleCheckEmail()V
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

    .line 1161
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$14;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCallback(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1174
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$14;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    const/4 p0, 0x1

    .line 1175
    invoke-static {p0, p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    :cond_0
    return-void
.end method

.method public onHideFragment()V
    .locals 2

    .line 1165
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$14;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->onResume()V

    const/4 v0, 0x0

    .line 1166
    sput-boolean v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    .line 1167
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$14;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V

    .line 1168
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$14;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    return-void
.end method
