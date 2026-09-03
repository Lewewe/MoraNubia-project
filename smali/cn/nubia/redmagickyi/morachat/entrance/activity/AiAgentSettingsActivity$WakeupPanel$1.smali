.class Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;
.super Ljava/lang/Object;
.source "AiAgentSettingsActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isValidInput:Z

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

.field final synthetic val$this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V
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

    .line 201
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->val$this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 210
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->isValidInput:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 211
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->isValidInput:Z

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->access$1402(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->access$1000(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;)V

    :goto_0
    return-void
.end method

.method public onShow()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->isValidInput:Z

    return-void
.end method

.method public onWordInvalid(Ljava/lang/String;)V
    .locals 1

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$1200(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_entrance_settings_custom_wakeup_input_error:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public onWordValid(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->isValidInput:Z

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->access$1500(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;Ljava/lang/String;)V

    .line 222
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;->access$1600(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$WakeupPanel;)Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->dismiss()V

    return-void
.end method
