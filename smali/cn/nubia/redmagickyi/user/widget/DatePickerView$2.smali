.class Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;
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

    .line 149
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/redmagickyi/user/widget/WheelView;II)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLunarMode:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 155
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-static {p1, p3}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->access$102(Lcn/nubia/redmagickyi/user/widget/DatePickerView;I)I

    .line 156
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->adjustDayDisplayerValues()V

    .line 157
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->notifyDateChanged()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->access$102(Lcn/nubia/redmagickyi/user/widget/DatePickerView;I)I

    .line 160
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->adjustMaxDay()V

    .line 161
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->notifyDateChanged()V

    .line 162
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->updateSpinners()V

    :goto_0
    return-void
.end method
