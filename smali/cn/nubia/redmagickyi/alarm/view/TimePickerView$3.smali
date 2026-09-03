.class Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;
.super Ljava/lang/Object;
.source "TimePickerView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/alarm/view/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;->this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$3;->this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->access$700(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)V

    return-void
.end method

.method public onScrollingStarted(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V
    .locals 0

    return-void
.end method
