.class public final Lx/c;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lx/f$a;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx/f$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lx/c;->h:Lx/f$a;

    iput-object p2, p0, Lx/c;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx/c;->h:Lx/f$a;

    iget-object v1, p0, Lx/c;->i:Ljava/lang/Object;

    iput-object v1, v0, Lx/f$a;->h:Ljava/lang/Object;

    return-void
.end method
