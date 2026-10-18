.class public final Lg8/a$c;
.super Ljava/lang/Object;
.source "OAuthModule.kt"

# interfaces
.implements Lob/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg8/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Lu9/b;

.field public final b:Landroid/app/Application;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lg8/a$b;

.field public final e:Lokhttp3/OkHttpClient;

.field public final f:Lyc/c;

.field public final g:Lg8/a$e;


# direct methods
.method public constructor <init>(Lg8/a;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lg8/a;->c:Lg8/a$a;

    .line 3
    iput-object v0, p0, Lg8/a$c;->a:Lu9/b;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p2, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/Application;

    iput-object p2, p0, Lg8/a$c;->b:Landroid/app/Application;

    .line 5
    sget-object p2, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    .line 6
    sget-object p2, Lcom/nike/adapt/BigfootApplication;->t:Lfd/h;

    .line 7
    invoke-virtual {p2}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    .line 8
    iput-object p2, p0, Lg8/a$c;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    iget-object p2, p1, Lg8/a;->d:Lg8/a$b;

    .line 10
    iput-object p2, p0, Lg8/a$c;->d:Lg8/a$b;

    .line 11
    new-instance p2, Lokhttp3/OkHttpClient;

    invoke-direct {p2}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object p2, p0, Lg8/a$c;->e:Lokhttp3/OkHttpClient;

    .line 12
    iget-object p2, p1, Lg8/a;->e:Lad/d;

    .line 13
    iput-object p2, p0, Lg8/a$c;->f:Lyc/c;

    .line 14
    iget-object p1, p1, Lg8/a;->b:Lg8/a$e;

    .line 15
    iput-object p1, p0, Lg8/a$c;->g:Lg8/a$e;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    iget-object v0, p0, Lg8/a$c;->c:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final b()Lob/f$a;
    .locals 1

    iget-object v0, p0, Lg8/a$c;->d:Lg8/a$b;

    return-object v0
.end method

.method public final c()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lg8/a$c;->b:Landroid/app/Application;

    return-object v0
.end method

.method public final d()Lu9/b;
    .locals 1

    iget-object v0, p0, Lg8/a$c;->a:Lu9/b;

    return-object v0
.end method

.method public final e()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lg8/a$c;->e:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final f()Led/e;
    .locals 1

    iget-object v0, p0, Lg8/a$c;->g:Lg8/a$e;

    return-object v0
.end method

.method public final g()Lyc/c;
    .locals 1

    iget-object v0, p0, Lg8/a$c;->f:Lyc/c;

    return-object v0
.end method
