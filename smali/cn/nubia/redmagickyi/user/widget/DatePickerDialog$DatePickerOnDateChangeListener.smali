.class Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Lcn/nubia/redmagickyi/user/widget/DatePickerView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatePickerOnDateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$1;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;-><init>(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lcn/nubia/redmagickyi/user/widget/DatePickerView;III)V
    .locals 2

    .line 230
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$300(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getYear()I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$202(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;I)I

    .line 231
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$300(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getMonth()I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$402(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;I)I

    .line 232
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$300(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->getDayOfMonth()I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$502(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;I)I

    .line 234
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$600(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 235
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$300(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    move-result-object p1

    iput-boolean p3, p1, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLunarMode:Z

    .line 236
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$200(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I

    move-result p4

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$400(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {v1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$500(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {p1, p4, v0, v1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$700(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;III)V

    .line 237
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$300(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->setDayLabelVisible(Z)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$800()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$300(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    move-result-object p1

    iput-boolean p2, p1, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->isLunarMode:Z

    .line 241
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$200(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I

    move-result p2

    iget-object p4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p4}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$400(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I

    move-result p4

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$500(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I

    move-result v0

    invoke-static {p1, p2, p4, v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$900(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;III)V

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$300(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)Lcn/nubia/redmagickyi/user/widget/DatePickerView;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/user/widget/DatePickerView;->setDayLabelVisible(Z)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$200(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I

    move-result p2

    iget-object p3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p3}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$400(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I

    move-result p3

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$500(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)I

    move-result p0

    invoke-static {p1, p2, p3, p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$900(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;III)V

    :goto_0
    return-void
.end method
