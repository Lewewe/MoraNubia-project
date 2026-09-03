.class Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;
.super Ljava/lang/Object;
.source "DatePickerView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/widget/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/widget/DatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/widget/DatePickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/redmagickyi/user/widget/WheelView;II)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLunarMode:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 120
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-static {p1, p3}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->access$002(Lcn/nubia/redmagickyi/user/widget/DatePickerView;I)I

    .line 121
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->adjustMonthDisplayerValues()V

    .line 122
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->adjustDayDisplayerValues()V

    .line 123
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->notifyDateChanged()V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-static {p1, p3}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->access$002(Lcn/nubia/redmagickyi/user/widget/DatePickerView;I)I

    .line 126
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->adjustMaxDay()V

    .line 127
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->notifyDateChanged()V

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$1;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->updateSpinners()V

    :goto_0
    return-void
.end method
