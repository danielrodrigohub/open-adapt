.class public final Lm8/g$b;
.super Ljava/lang/Object;
.source "FetchProfileRepository.kt"

# interfaces
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm8/g;->a(Lf8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf8/a<",
        "Lcom/nike/adapt/network/identity/model/AdaptIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf8/c<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/c<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lm8/g$b;->a:Lf8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lm8/g$b;->a:Lf8/c;

    new-instance v1, Lf8/d;

    invoke-direct {v1, p1}, Lf8/d;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lf8/c;->a(Lf8/b;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Lcom/nike/adapt/network/identity/model/AdaptIdentity;

    .line 2
    new-instance v9, Lcom/nike/adapt/presenter/profile/AdaptUser;

    .line 3
    invoke-virtual {p1}, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->getNuId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->getName()Lcom/nike/adapt/network/identity/model/Name;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Name;->getLatin()Lcom/nike/adapt/network/identity/model/Latin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Latin;->getGiven()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->getName()Lcom/nike/adapt/network/identity/model/Name;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Name;->getLatin()Lcom/nike/adapt/network/identity/model/Latin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Latin;->getFamily()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 6
    :goto_1
    invoke-virtual {p1}, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->getAvatar()Lcom/nike/adapt/network/identity/model/Avatar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Avatar;->getMedium()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 7
    :goto_2
    invoke-virtual {p1}, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->getHometown()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {p1}, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->getDob()Lcom/nike/adapt/network/identity/model/Dob;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Dob;->getDay()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Dob;->getMonth()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Dob;->getYear()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    const-string v8, "UTC"

    .line 11
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 12
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Dob;->getYear()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Dob;->getMonth()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Dob;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v8, v10, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 13
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v8, 0x1

    .line 14
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v10, v8

    const/4 v8, 0x2

    .line 15
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-gt v11, v12, :cond_4

    .line 16
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v11, v8, :cond_6

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 17
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-le v7, v0, :cond_6

    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v10, 0x0

    .line 18
    :cond_6
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    goto :goto_5

    :cond_7
    move-object v7, v2

    .line 19
    :goto_5
    invoke-virtual {p1}, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->getRegistration()Lcom/nike/adapt/network/identity/model/Registration;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Registration;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    move-object v8, v0

    goto :goto_6

    :cond_8
    move-object v8, v2

    .line 20
    :goto_6
    invoke-virtual {p1}, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->getContact()Lcom/nike/adapt/network/identity/model/Contact;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/nike/adapt/network/identity/model/Contact;->getEmail()Lcom/nike/adapt/network/identity/model/Email;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/nike/adapt/network/identity/model/Email;->getAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_9
    move-object p1, v2

    :goto_7
    move-object v0, v9

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, p1

    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/nike/adapt/presenter/profile/AdaptUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lm8/g$b;->a:Lf8/c;

    .line 23
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 24
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 26
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v1, Le7/h;

    invoke-direct {v1}, Le7/h;-><init>()V

    invoke-static {v1, v9}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Le7/h;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PREF_BIGFOOT_USER"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    sget-object v0, Lm8/g;->b:Lm8/g;

    new-instance v1, Lm8/h;

    invoke-direct {v1, p1}, Lm8/h;-><init>(Lf8/c;)V

    .line 30
    invoke-virtual {v0, p1, v1}, Lm8/g;->b(Lf8/c;Lqd/l;)V

    return-void
.end method
