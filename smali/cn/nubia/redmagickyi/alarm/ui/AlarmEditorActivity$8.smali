.class Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$8;
.super Ljava/lang/Object;
.source "AlarmEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->parseMessage(Ljava/lang/String;)V
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

    .line 927
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$8;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 930
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$8;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$800(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Lcn/nubia/redmagickyi/alarm/view/RoundRadiusLayout;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->fadeOut(Landroid/view/View;J)V

    .line 931
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$8;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$900(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    return-void
.end method
