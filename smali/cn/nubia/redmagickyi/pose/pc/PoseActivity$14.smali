.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;
.super Ljava/lang/Object;
.source "PoseActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->showMenu()V
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

    .line 867
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCharactorClick(Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;)V
    .locals 9

    .line 932
    const-string v0, "PoseActivity"

    if-nez p1, :cond_0

    .line 933
    const-string p0, "beans == null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 936
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClickCharactorClick:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 938
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getLive_type()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/16 v3, 0xbbf

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v4, :cond_8

    .line 939
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCharactorClickable:Z

    if-eqz v0, :cond_7

    .line 940
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentLiveType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 942
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0, v6}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    return-void

    .line 945
    :cond_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->setCurrentScene(Ljava/lang/String;)V

    .line 946
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v5}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    .line 948
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 949
    iput v3, p1, Landroid/os/Message;->what:I

    .line 950
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    goto/16 :goto_0

    :cond_2
    if-nez v0, :cond_6

    .line 955
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 956
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->stopPreview()V

    .line 957
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 959
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2200(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 960
    sget-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 961
    sget-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, v5}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 962
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2200(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    .line 963
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 964
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    .line 965
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isFaceOpen()Z

    move-result p1

    if-nez p1, :cond_4

    .line 966
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V

    goto :goto_0

    .line 967
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 968
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V

    .line 969
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    goto :goto_0

    .line 971
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v6}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V

    .line 972
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    goto :goto_0

    :cond_6
    if-ne v0, v5, :cond_7

    .line 975
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    .line 979
    :cond_7
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    iput-boolean v6, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCharactorClickable:Z

    goto/16 :goto_2

    .line 980
    :cond_8
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getLive_type()I

    move-result v0

    if-nez v0, :cond_a

    .line 981
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCharactorClickable:Z

    if-eqz v0, :cond_11

    .line 982
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentLiveType()I

    move-result v0

    if-nez v0, :cond_9

    .line 984
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0, v6}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    return-void

    .line 987
    :cond_9
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->setCurrentScene(Ljava/lang/String;)V

    .line 988
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    iput-boolean v6, p1, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCharactorClickable:Z

    .line 990
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v5}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    .line 992
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 993
    iput v3, p1, Landroid/os/Message;->what:I

    .line 994
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 996
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xbc1

    .line 997
    iput v0, p1, Landroid/os/Message;->what:I

    .line 998
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1000
    :cond_a
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getLive_type()I

    move-result v0

    if-ne v0, v5, :cond_11

    .line 1001
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCharactorClickable:Z

    if-eqz v0, :cond_11

    .line 1002
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentScene()Ljava/lang/String;

    move-result-object v0

    .line 1003
    iget-object v7, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v7}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentLiveType()I

    move-result v7

    .line 1004
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1005
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0, v6}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    return-void

    .line 1008
    :cond_b
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->setCurrentScene(Ljava/lang/String;)V

    .line 1009
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v5}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    .line 1011
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 1012
    iput v3, p1, Landroid/os/Message;->what:I

    .line 1013
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v7, :cond_d

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_c

    goto/16 :goto_1

    .line 1018
    :cond_c
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    goto/16 :goto_1

    .line 1021
    :cond_d
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_e

    .line 1022
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->stopPreview()V

    .line 1023
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1025
    :cond_e
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2200(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1026
    sget-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 1027
    sget-object p1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, v5}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 1028
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2200(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    .line 1029
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1030
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    .line 1031
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isFaceOpen()Z

    move-result p1

    if-nez p1, :cond_f

    .line 1032
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V

    goto :goto_1

    .line 1033
    :cond_f
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1034
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V

    .line 1035
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    goto :goto_1

    .line 1037
    :cond_10
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v6}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V

    .line 1038
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    .line 1044
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    iput-boolean v6, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->mCharactorClickable:Z

    :cond_11
    :goto_2
    return-void
.end method

.method public onClickMainNenuItem(IZ)V
    .locals 3

    .line 883
    const-string v0, "PoseActivity"

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 918
    :cond_0
    const-string p1, "onClickMainNenuItem: setting"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    .line 920
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    const-class v2, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 921
    sget-object p2, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->ARACTIVITY_TO_LIVE_SETTING:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 922
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->startActivity(Landroid/content/Intent;)V

    .line 923
    const-string p0, "onClickMainNenuItem: setting intent"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 914
    :cond_1
    const-string p1, "onClickMainNenuItem: charactor"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    goto/16 :goto_1

    .line 890
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    if-eqz p2, :cond_3

    .line 892
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V

    .line 893
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->setFaceOpenStatus(Z)V

    .line 894
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2002(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)Z

    .line 895
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    .line 896
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$2100(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V

    goto :goto_0

    .line 898
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 899
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->clearPoseScene()V

    .line 901
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->stopFaceCamera()V

    .line 902
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 903
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1500(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseMonitorManager;->setPoseUnConfidence()V

    .line 905
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0xbbf

    .line 906
    iput p2, p1, Landroid/os/Message;->what:I

    .line 907
    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 908
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1600(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;I)V

    .line 909
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->setFaceOpenStatus(Z)V

    .line 911
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onClickMainNenuItem: mFaceRecog "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$400(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->isFaceOpen()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 885
    :cond_6
    const-string p1, "onClickMainNenuItem: close"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    .line 887
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->finish()V

    :goto_1
    return-void
.end method

.method public onTouchMenuItem(Landroid/view/MotionEvent;)V
    .locals 1

    .line 870
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 876
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$1000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;Z)V

    goto :goto_0

    .line 873
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$14;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object p0

    const/16 p1, 0xbb8

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->removeMessages(I)V

    :goto_0
    return-void
.end method
