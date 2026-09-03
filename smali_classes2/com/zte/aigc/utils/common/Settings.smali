.class public Lcom/zte/aigc/utils/common/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/zte/aigc/utils/common/SettingsContract$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aigc/utils/common/Settings$App;,
        Lcom/zte/aigc/utils/common/Settings$BaseSettings;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "userconfig"

.field private static final TAG:Ljava/lang/String; = "Settings"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    sget-object v0, Lcom/zte/aigc/utils/common/SettingsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "userconfig"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/aigc/utils/common/Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
