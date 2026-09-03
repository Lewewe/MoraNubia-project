.class public Lcom/zte/payment/common/IPCMethods$ProcessPayment;
.super Ljava/lang/Object;
.source "IPCMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/payment/common/IPCMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessPayment"
.end annotation


# static fields
.field public static final METHOD:Ljava/lang/String; = "processPayment"

.field public static final P_KEY_AIGC_MODEL:Ljava/lang/String; = "aigc_model"

.field public static final P_KEY_AI_FUNC_COUNT:Ljava/lang/String; = "ai_func_count"

.field public static final P_KEY_AI_FUNC_TOKENS:Ljava/lang/String; = "ai_func_tokens"

.field public static final P_KEY_APP_FUNC_NAME:Ljava/lang/String; = "app_func_name"

.field public static final P_KEY_APP_FUNC_NAME_ALIAS:Ljava/lang/String; = "app_func_name_alias"

.field public static final P_KEY_APP_FUNC_SESSION:Ljava/lang/String; = "app_func_session"

.field public static final P_KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field public static final P_KEY_APP_NAME_ALIAS:Ljava/lang/String; = "app_name_alias"

.field public static final P_KEY_APP_PACKAGE:Ljava/lang/String; = "app_package"

.field public static final P_KEY_NO_LOGIN_GUIDE:Ljava/lang/String; = "no_login_guide"

.field public static final P_KEY_NO_RECHARGE_GUIDE:Ljava/lang/String; = "no_recharge_guide"

.field public static final P_KEY_PAY_AFTER:Ljava/lang/String; = "pay_after"

.field public static final P_KEY_TIME:Ljava/lang/String; = "time"

.field public static final P_KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final R_KEY_PAYMENT_NUMBER:Ljava/lang/String; = "payment_number"

.field public static final R_KEY_PAYMENT_ORDER_ID:Ljava/lang/String; = "payment_order_id"

.field public static final R_KEY_PAYMENT_RESULT:Ljava/lang/String; = "payment_result"

.field public static final R_KEY_USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
