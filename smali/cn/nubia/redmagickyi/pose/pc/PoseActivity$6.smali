.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$6;
.super Ljava/lang/Object;
.source "PoseActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$6;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionGuideDisallow()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$6;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 293
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$6;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->finish()V

    return-void
.end method

.method public onPermissionRequested()V
    .locals 2

    .line 283
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 284
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$6;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$200(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$6;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$202(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)Z

    .line 286
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$6;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$300(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    :cond_0
    return-void
.end method

.method public onPermissionRequesting()V
    .locals 0

    .line 278
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method
