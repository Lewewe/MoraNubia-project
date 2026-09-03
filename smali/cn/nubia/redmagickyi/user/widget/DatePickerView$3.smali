.class Lcn/nubia/redmagickyi/user/widget/DatePickerView$3;
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

    .line 168
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/redmagickyi/user/widget/WheelView;II)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-static {p1, p3}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->access$202(Lcn/nubia/redmagickyi/user/widget/DatePickerView;I)I

    .line 174
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->notifyDateChanged()V

    return-void
.end method
