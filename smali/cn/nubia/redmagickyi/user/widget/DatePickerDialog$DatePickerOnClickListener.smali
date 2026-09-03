.class Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatePickerOnClickListener"
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

    .line 451
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$1;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;-><init>(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 456
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$1000(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)V

    .line 457
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog$DatePickerOnClickListener;->this$0:Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;->access$1100(Lcn/nubia/redmagickyi/user/widget/DatePickerDialog;)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    if-ne p2, p0, :cond_1

    .line 459
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
