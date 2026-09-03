.class Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$4;
.super Ljava/lang/Object;
.source "AlarmEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->initVoiceTextGravity()V
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

    .line 357
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$4;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$4;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$200(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$4;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$200(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 361
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$4;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$200(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroid/widget/TextView;

    move-result-object p0

    const v0, 0x800013

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$4;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$200(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Landroid/widget/TextView;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method
