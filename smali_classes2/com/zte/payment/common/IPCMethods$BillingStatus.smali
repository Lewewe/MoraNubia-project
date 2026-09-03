.class public Lcom/zte/payment/common/IPCMethods$BillingStatus;
.super Ljava/lang/Object;
.source "IPCMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/payment/common/IPCMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillingStatus"
.end annotation


# static fields
.field public static final METHOD:Ljava/lang/String; = "billingStatus"

.field public static final P_KEY_AIGC_MODEL:Ljava/lang/String; = "aigc_model"

.field public static final P_KEY_AI_FUNC_COUNT:Ljava/lang/String; = "ai_func_count"

.field public static final P_KEY_AI_FUNC_TOKENS:Ljava/lang/String; = "ai_func_tokens"

.field public static final P_KEY_NO_LOGIN_GUIDE:Ljava/lang/String; = "no_login_guide"

.field public static final P_KEY_NO_RECHARGE_GUIDE:Ljava/lang/String; = "no_recharge_guide"

.field public static final P_KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final R_KEY_BILLING_STATUS:Ljava/lang/String; = "billing_status"

.field public static final R_KEY_POINTS:Ljava/lang/String; = "points"

.field public static final R_KEY_USER_LOGGED:Ljava/lang/String; = "user_logged"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
