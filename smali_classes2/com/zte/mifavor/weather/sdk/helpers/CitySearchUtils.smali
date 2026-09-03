.class public Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;
.super Ljava/lang/Object;
.source "CitySearchUtils.java"


# static fields
.field private static final SPECIAL_CITIES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->SPECIAL_CITIES:Ljava/util/ArrayList;

    .line 119
    const-string v1, "\u5317\u4eac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v1, "\u5929\u6d25"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v1, "\u4e0a\u6d77"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "\u91cd\u5e86"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendChineseNameForCities(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/city/City;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/city/City;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->isListEmpty(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->isListEmpty(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 81
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 85
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/weather/sdk/model/city/City;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/weather/sdk/model/city/City;

    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {v0}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/city/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/city/City;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setCityName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/city/City;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setProvince(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/city/City;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setCountry(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static appendEnglishNameForCities(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/city/City;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/city/City;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->isListEmpty(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 40
    invoke-static {p1}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->isListEmpty(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 41
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 47
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 51
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/weather/sdk/model/city/City;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/weather/sdk/model/city/City;

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v0}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/city/City;->getLocationKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/city/City;->getNameEn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setNameEn(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/city/City;->getCityNameEn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setCityNameEn(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/city/City;->getProvinceEn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setProvinceEn(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Lcom/zte/weather/sdk/model/city/City;->getCountryEn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/weather/sdk/model/city/City;->setCountryEn(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDistrictCanBeSearched(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 22
    const-string v0, "\u533a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_0
    const-string v0, "\u53bf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :cond_1
    const-string v0, "\u5e02"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static isListEmpty(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zte/weather/sdk/model/city/City;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 107
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpecialCity(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 17
    sget-object v0, Lcom/zte/mifavor/weather/sdk/helpers/CitySearchUtils;->SPECIAL_CITIES:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
