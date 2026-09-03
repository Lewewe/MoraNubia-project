.class Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$6;
.super Ljava/lang/Object;
.source "AlarmEditorActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog$OnAlarmLabelInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->showLableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 725
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$6;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmLabelInputClick(Ljava/lang/String;)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$6;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$300(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$6;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$400(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$6;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$500(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setLabel(Ljava/lang/String;)V

    return-void
.end method
