.class public final Lr2/m$b$a;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lm3/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/m$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm3/a$b<",
        "Lr2/n<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr2/m$b;


# direct methods
.method public constructor <init>(Lr2/m$b;)V
    .locals 0

    iput-object p1, p0, Lr2/m$b$a;->a:Lr2/m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 9

    new-instance v8, Lr2/n;

    iget-object v0, p0, Lr2/m$b$a;->a:Lr2/m$b;

    iget-object v1, v0, Lr2/m$b;->a:Lu2/a;

    iget-object v2, v0, Lr2/m$b;->b:Lu2/a;

    iget-object v3, v0, Lr2/m$b;->c:Lu2/a;

    iget-object v4, v0, Lr2/m$b;->d:Lu2/a;

    iget-object v5, v0, Lr2/m$b;->e:Lr2/o;

    iget-object v6, v0, Lr2/m$b;->f:Lr2/q$a;

    iget-object v7, v0, Lr2/m$b;->g:Lm3/a$c;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lr2/n;-><init>(Lu2/a;Lu2/a;Lu2/a;Lu2/a;Lr2/o;Lr2/q$a;Li0/e;)V

    return-object v8
.end method
