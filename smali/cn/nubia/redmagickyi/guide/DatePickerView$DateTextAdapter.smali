.class Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;
.super Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/guide/DatePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateTextAdapter"
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

.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/guide/DatePickerView;Landroid/content/Context;)V
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

    .line 289
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    .line 290
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->item_birth_year:I

    invoke-direct {p0, p2, p1}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    .line 291
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tempValue:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->setItemTextResource(I)V

    return-void
.end method


# virtual methods
.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 0

    .line 301
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->list:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%1d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getItemsCount()I
    .locals 0

    .line 306
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->list:Ljava/util/ArrayList;

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

    .line 295
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->list:Ljava/util/ArrayList;

    .line 296
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/DatePickerView$DateTextAdapter;->notifyDataChangedEvent()V

    return-void
.end method
