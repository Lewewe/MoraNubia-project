.class Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager$1;
.super Ljava/lang/Object;
.source "WakeupTrainingActivity.java"

# interfaces
.implements Lcom/zte/wakeup/training/IWakeupAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;Lcom/zte/wakeup/training/TrainingManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

.field final synthetic val$this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;)V
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

    .line 339
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$DataManager$1;->val$this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWakeupPackageName()Ljava/lang/String;
    .locals 0

    .line 342
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    const-string p0, "com.zte.voiceassist.wakeup"

    return-object p0
.end method

.method public isSupportCustom()Z
    .locals 0

    .line 357
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->isSupportCustom()Z

    move-result p0

    return p0
.end method

.method public setCustomWakeupWord(Ljava/lang/String;)V
    .locals 0

    .line 347
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->setCustomWakeupWord(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomWakeupWordOff()V
    .locals 0

    .line 352
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/wakeup/WakeupManager;->setCustomWakeupWordOff()V

    return-void
.end method
