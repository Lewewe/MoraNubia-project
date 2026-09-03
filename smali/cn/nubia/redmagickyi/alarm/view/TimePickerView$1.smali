.class Lcn/nubia/redmagickyi/alarm/view/TimePickerView$1;
.super Ljava/lang/Object;
.source "TimePickerView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->init()V
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

    .line 73
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$1;->this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;II)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$1;->this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    invoke-static {p1, p3}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->access$002(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;I)I

    .line 77
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$1;->this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->access$100(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$1;->this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->access$100(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$1;->this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->access$200(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)I

    move-result v1

    invoke-static {v0, p2, v1}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->access$300(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;II)[I

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$1;->this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->access$400(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)[I

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;->OnSelectedChanged([I[I)V

    .line 80
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$1;->this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView;->access$500(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;)Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;

    move-result-object p0

    iput p3, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->currentIndex:I

    return-void
.end method
