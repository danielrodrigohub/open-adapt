.class public final Lg0/h;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Li0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li0/a<",
        "Lg0/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lg0/c;


# direct methods
.method public constructor <init>(Lg0/c;)V
    .locals 0

    iput-object p1, p0, Lg0/h;->a:Lg0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lg0/k$a;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lg0/k$a;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Lg0/k$a;-><init>(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lg0/h;->a:Lg0/c;

    invoke-virtual {v0, p1}, Lg0/c;->a(Lg0/k$a;)V

    return-void
.end method
