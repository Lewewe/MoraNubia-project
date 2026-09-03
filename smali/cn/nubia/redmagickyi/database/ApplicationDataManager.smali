.class public Lcn/nubia/redmagickyi/database/ApplicationDataManager;
.super Ljava/lang/Object;
.source "ApplicationDataManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/database/ApplicationDataManager;->TAG:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcn/nubia/redmagickyi/database/ApplicationDataManager;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcn/nubia/redmagickyi/database/ApplicationDataManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method
