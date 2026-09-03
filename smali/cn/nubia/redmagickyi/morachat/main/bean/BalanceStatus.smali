.class public Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;
.super Ljava/lang/Object;
.source "BalanceStatus.java"


# static fields
.field public static final BALANCES_STATE:I = 0x0

.field public static final BALANCES_STATE_ACCOUNT_NOT_LOGGED_IN:I = -0x2

.field public static final BALANCES_STATE_INSUFFICIENT_BALANCE:I = -0x1

.field public static final BALANCES_STATE_NORMAL:I = 0x0

.field public static final BALANCES_STATE_OTHER_ERRORS:I = -0x3


# instance fields
.field public balance:I

.field public status:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->status:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->balance:I

    .line 16
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->status:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BalanceStatus{balance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->balance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
