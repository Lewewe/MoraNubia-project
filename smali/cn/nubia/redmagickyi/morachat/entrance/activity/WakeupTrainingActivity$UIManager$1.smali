.class Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;
.super Ljava/lang/Object;
.source "WakeupTrainingActivity.java"

# interfaces
.implements Lcom/zte/wakeup/training/TrainingManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitResult(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 220
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->finish()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1100(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onRecordItemFinish(Ljava/lang/Integer;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 262
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1300(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->setProgress(D)V

    .line 263
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1400(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_mid_title_generate:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 266
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1600(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->moveToNext(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecordItemVerifyFailed(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 254
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1400(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_mid_title_mid:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1500(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/os/Vibrator;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 256
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1600(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->onCurrentError(I)V

    return-void
.end method

.method public onRecordItemVerifySuccess(Ljava/lang/Integer;)V
    .locals 2

    .line 244
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 245
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1400(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_mid_title_mid:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 247
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1400(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_mid_title_end:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 249
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1500(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/os/Vibrator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public onStartRecordingFailed()V
    .locals 1

    .line 233
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;Z)V

    return-void
.end method

.method public onStartRecordingSuccess()V
    .locals 1

    .line 228
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;Z)V

    return-void
.end method

.method public onTrainFailed(ILjava/lang/String;)V
    .locals 3

    .line 286
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    iget-object p2, p2, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_create_sm_failure:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 287
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1900(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)V

    return-void
.end method

.method public onTrainSuccess()V
    .locals 5

    .line 273
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1700(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1600(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/view/TrainingWordContainer;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1800(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$anim;->dialog_enter:I

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 278
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1300(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->setProgress(D)V

    .line 279
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1400(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_end_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1100(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_training_end_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 281
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1100(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public volumeUpdate(D)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;->access$1300(Lcn/nubia/redmagickyi/morachat/entrance/activity/WakeupTrainingActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/entrance/view/SpeechBar;->setProgress(D)V

    return-void
.end method
