.class Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$1;
.super Ljava/lang/Object;
.source "ARBigImageFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionGuideDisallow()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 132
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onPermissionRequested()V
    .locals 0

    .line 126
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public onPermissionRequesting()V
    .locals 0

    .line 121
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method
