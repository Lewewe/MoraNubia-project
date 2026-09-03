.class Lcn/nubia/redmagickyi/guide/DatePickerView$2;
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

    .line 115
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;II)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    add-int/lit8 v0, p3, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$102(Lcn/nubia/redmagickyi/guide/DatePickerView;I)I

    .line 119
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$000(Lcn/nubia/redmagickyi/guide/DatePickerView;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$100(Lcn/nubia/redmagickyi/guide/DatePickerView;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$200(Lcn/nubia/redmagickyi/guide/DatePickerView;II)I

    move-result p1

    .line 120
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$400(Lcn/nubia/redmagickyi/guide/DatePickerView;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$302(Lcn/nubia/redmagickyi/guide/DatePickerView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$500(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$300(Lcn/nubia/redmagickyi/guide/DatePickerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->setList(Ljava/util/ArrayList;)V

    .line 122
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$600(Lcn/nubia/redmagickyi/guide/DatePickerView;)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$500(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    .line 124
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$700(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$500(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    move-result-object v0

    iget v0, v0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$500(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$600(Lcn/nubia/redmagickyi/guide/DatePickerView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    .line 128
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$1200(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;

    move-result-object p1

    iput p3, p1, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->currentIndex:I

    .line 129
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$900(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$900(Lcn/nubia/redmagickyi/guide/DatePickerView;)Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p3}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$000(Lcn/nubia/redmagickyi/guide/DatePickerView;)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$600(Lcn/nubia/redmagickyi/guide/DatePickerView;)I

    move-result v1

    invoke-static {p3, v0, p2, v1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$1000(Lcn/nubia/redmagickyi/guide/DatePickerView;III)[I

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$2;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$1100(Lcn/nubia/redmagickyi/guide/DatePickerView;)[I

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;->OnSelectedChanged([I[I)V

    :cond_1
    return-void
.end method
