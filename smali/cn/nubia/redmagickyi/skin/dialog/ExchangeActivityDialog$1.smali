.class Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$1;
.super Ljava/lang/Object;
.source "ExchangeActivityDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->initView(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$1;->this$0:Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    const-string p0, ""

    const/4 p2, 0x0

    move-object p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ge p2, p4, :cond_3

    .line 48
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    const/16 p5, 0x61

    if-lt p4, p5, :cond_0

    const/16 p5, 0x7a

    if-le p4, p5, :cond_2

    :cond_0
    const/16 p5, 0x41

    if-lt p4, p5, :cond_1

    const/16 p5, 0x5a

    if-le p4, p5, :cond_2

    :cond_1
    const/16 p5, 0x30

    if-lt p4, p5, :cond_4

    const/16 p5, 0x39

    if-gt p4, p5, :cond_4

    .line 50
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move-object p0, p3

    :cond_4
    return-object p0
.end method
