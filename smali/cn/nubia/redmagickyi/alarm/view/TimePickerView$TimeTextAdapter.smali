.class Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;
.super Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/alarm/view/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeTextAdapter"
.end annotation


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/alarm/view/TimePickerView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->this$0:Lcn/nubia/redmagickyi/alarm/view/TimePickerView;

    .line 170
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->item_birth_year:I

    invoke-direct {p0, p2, p1}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    .line 171
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tempValue:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->setItemTextResource(I)V

    return-void
.end method


# virtual methods
.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 2

    const/16 v0, 0xa

    .line 181
    const-string v1, ""

    if-ge p1, v0, :cond_1

    .line 182
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->list:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 184
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->list:Ljava/util/ArrayList;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%1d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public getItemsCount()I
    .locals 0

    .line 189
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->list:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->list:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/TimePickerView$TimeTextAdapter;->notifyDataChangedEvent()V

    return-void
.end method
