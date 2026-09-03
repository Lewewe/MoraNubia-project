.class Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;
.super Ljava/lang/Object;
.source "AiAgentSettingsActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiAgentSettingsChanged(Ljava/lang/String;)V
    .locals 1

    .line 71
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$300(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$400(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    goto :goto_0

    .line 74
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$300(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$400(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$300(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$400(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;->access$300(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity;)Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$400(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCloseSystemChanged(Lcn/nubia/redmagickyi/morachat/main/receiver/AiAgentMainReceiver$SystemReason;)V
    .locals 0

    return-void
.end method

.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onScreenStatusChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWakeupSettingsChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
