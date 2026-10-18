.class public final Lw7/d$a;
.super Lrd/o;
.source "BigfootAuthProvider.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lw7/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lw7/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw7/d$a;

    invoke-direct {v0}, Lw7/d$a;-><init>()V

    sput-object v0, Lw7/d$a;->h:Lw7/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lw7/c;->a:Lw7/c;

    return-object v0
.end method
