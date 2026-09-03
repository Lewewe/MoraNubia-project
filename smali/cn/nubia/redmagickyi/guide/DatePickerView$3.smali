.class Lcn/nubia/redmagickyi/guide/DatePickerView$3;
.super Ljava/lang/Object;
.source "DatePickerView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guide/DatePickerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/DatePickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;II)V
    .locals 3

    .line 138
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    add-int/lit8 v0, p3, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$602(Lcn/nubia/redmagickyi/guide/DatePickerView;I)I

    .line 139
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$900(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$900(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$000(Lcn/nubia/redmagickyi/guide/DatePickerView;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$100(Lcn/nubia/redmagickyi/guide/DatePickerView;)I

    move-result v2

    add-int/lit8 p2, p2, 0x1

    invoke-static {v0, v1, v2, p2}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$1000(Lcn/nubia/redmagickyi/guide/DatePickerView;III)[I

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$1100(Lcn/nubia/redmagickyi/guide/DatePickerView;)[I

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;->OnSelectedChanged([I[I)V

    .line 142
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$3;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$500(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    move-result-object p0

    iput p3, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    return-void
.end method
