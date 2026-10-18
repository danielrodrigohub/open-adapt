.class public final Lr2/m$a$a;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lm3/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm3/a$b<",
        "Lr2/j<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr2/m$a;


# direct methods
.method public constructor <init>(Lr2/m$a;)V
    .locals 0

    iput-object p1, p0, Lr2/m$a$a;->a:Lr2/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lr2/j;

    iget-object v1, p0, Lr2/m$a$a;->a:Lr2/m$a;

    iget-object v2, v1, Lr2/m$a;->a:Lr2/j$d;

    iget-object v1, v1, Lr2/m$a;->b:Lm3/a$c;

    invoke-direct {v0, v2, v1}, Lr2/j;-><init>(Lr2/j$d;Li0/e;)V

    return-object v0
.end method
