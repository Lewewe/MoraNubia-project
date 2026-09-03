.class final Lcn/nubia/accountsdk/common/PhoneInfo$1;
.super Ljava/lang/Object;
.source "PhoneInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/common/PhoneInfo;->putUniqueId(Lcn/nubia/accountsdk/common/SharedPreferencesUtil;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pKey:Ljava/lang/String;

.field final synthetic val$pShareprefense:Lcn/nubia/accountsdk/common/SharedPreferencesUtil;

.field final synthetic val$pValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/common/SharedPreferencesUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/accountsdk/common/PhoneInfo$1;->val$pShareprefense:Lcn/nubia/accountsdk/common/SharedPreferencesUtil;

    iput-object p2, p0, Lcn/nubia/accountsdk/common/PhoneInfo$1;->val$pKey:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/accountsdk/common/PhoneInfo$1;->val$pValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcn/nubia/accountsdk/common/PhoneInfo$1;->val$pShareprefense:Lcn/nubia/accountsdk/common/SharedPreferencesUtil;

    iget-object v1, p0, Lcn/nubia/accountsdk/common/PhoneInfo$1;->val$pKey:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/accountsdk/common/PhoneInfo$1;->val$pValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
