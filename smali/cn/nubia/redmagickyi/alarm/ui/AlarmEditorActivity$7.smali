.class Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$7;
.super Ljava/lang/Object;
.source "AlarmEditorActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/alarm/dialog/AlarmTypeSelectDialog$OnAlarmTypeSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->showAlarmTypeDialog()V
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

    .line 747
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$7;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmtypeClick(I)V
    .locals 1

    .line 750
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$7;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$500(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$7;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$500(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setAlarm_type(I)V

    .line 753
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$7;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initAlarmType()V

    return-void
.end method
