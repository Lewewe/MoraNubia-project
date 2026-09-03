.class public Lcn/nubia/redmagickyi/morachat/main/function/nlp/NLPQueryManager;
.super Lcom/zte/nlp/manager/AbstractNLPQueryManager;
.source "NLPQueryManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/zte/nlp/manager/AbstractNLPQueryManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected isEnableNLP()Z
    .locals 0

    .line 10
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnableNLP()Z

    move-result p0

    return p0
.end method
